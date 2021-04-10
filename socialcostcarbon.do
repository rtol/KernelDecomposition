regress scc prtp year [iw=cquality]
regress scc prtp year [iw=cauthor]
regress scc prtp year [iw=cpaper]

regress scc prtp i.year [iw=cquality]
regress scc prtp i.year [iw=cauthor]
regress scc prtp i.year [iw=cpaper]

qreg scc prtp year [iw=cquality], q(0.1)
qreg scc prtp year [iw=cquality], q(0.3)
qreg scc prtp year [iw=cquality], q(0.5)
qreg scc prtp year [iw=cquality], q(0.7)
qreg scc prtp year [iw=cquality], q(0.9)
qreg scc prtp year [iw=cauthor], q(0.1)
qreg scc prtp year [iw=cauthor], q(0.3)
qreg scc prtp year [iw=cauthor], q(0.5)
qreg scc prtp year [iw=cauthor], q(0.7)
qreg scc prtp year [iw=cauthor], q(0.9)
qreg scc prtp year [iw=cpaper], q(0.1)
qreg scc prtp year [iw=cpaper], q(0.3)
qreg scc prtp year [iw=cpaper], q(0.5)
qreg scc prtp year [iw=cpaper], q(0.7)
qreg scc prtp year [iw=cpaper], q(0.9)