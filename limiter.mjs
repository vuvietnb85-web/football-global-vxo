// Original implementation. Linked-channel lookahead sample-peak brickwall.
export const CEILING=10**(-1/20);
export class PeakLimiter{
 constructor(rate=48000,channels=2){this.delay=Math.max(1,Math.round(rate*.005));this.buffers=Array.from({length:channels},()=>new Float32Array(this.delay+1));this.pos=0;this.gain=1;this.release=Math.exp(-1/(rate*.05));}
 processFrame(values){let b=this.buffers,n=b[0].length;for(let c=0;c<b.length;c++)b[c][this.pos]=Number.isFinite(values[c])?values[c]:0;let peak=0;for(let c=0;c<b.length;c++)for(let v of b[c])peak=Math.max(peak,Math.abs(v));let target=peak>CEILING?CEILING/peak:1;this.gain=Math.min(target,this.release*this.gain+(1-this.release));let read=(this.pos+1)%n,out=b.map(x=>Math.max(-CEILING,Math.min(CEILING,x[read]*this.gain)));this.pos=read;return out;}
}
