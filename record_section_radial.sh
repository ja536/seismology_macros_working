%plot record section - radial component

% set amplitude 
scale = .0002

%read in files rsac('file')
[ACSO, ALMA, BARB, BDEG, CABN, CDRF, INTX, JSPR, LADY, LBDL, MUSK, NAZF, P52A, PVGR, R56A, R57A, R58A, R58B, RTSN, S59A, SUSI, T60A, WINE, WIRE, WLFT, WTMN, YLDA] = rsac('ACSO.2015.097.00.46.21.0000.US.ACSO..BHR.M.SAC','ALMA.2015.097.00.46.21.0000.7A.ALMA..BHR.M.SAC','BARB.2015.097.00.46.21.0000.7A.BARB..BHR.M.SAC','BDEG.2015.097.00.46.21.0000.7A.BDEG..BHR.M.SAC','CABN.2015.097.00.46.21.0000.7A.CABN..BHR.M.SAC','CDRF.2015.097.00.46.21.0000.7A.CDRF..BHR.M.SAC','INTX.2015.097.00.46.21.0000.7A.INTX..BHR.M.SAC','JSPR.2015.097.00.46.21.0000.7A.JSPR..BHR.M.SAC','LADY.2015.097.00.46.21.0000.7A.LADY..BHR.M.SAC','LBDL.2015.097.00.46.21.0000.7A.LBDL..BHR.M.SAC','MUSK.2015.097.00.46.21.0000.7A.MUSK..BHR.M.SAC','NAZF.2015.097.00.46.21.0000.7A.NAZF..BHR.M.SAC','P52A.2015.097.00.46.21.0000.TA.P52A..BHR.M.SAC','PVGR.2015.097.00.46.21.0000.7A.PVGR..BHR.M.SAC','R56A.2015.097.00.46.21.0000.TA.R56A..BHR.M.SAC','R57A.2015.097.00.46.21.0000.TA.R57A..BHR.M.SAC','R58A.2015.097.00.46.21.0000.TA.R58A..BHR.M.SAC','R58B.2015.097.00.46.21.0000.TA.R58B..BHR.M.SAC','RTSN.2015.097.00.46.21.0000.7A.RTSN..BHR.M.SAC','S59A.2015.097.00.46.21.0000.TA.S59A..BHR.M.SAC','SUSI.2015.097.00.46.21.0000.7A.SUSI..BHR.M.SAC','T60A.2015.097.00.46.21.0000.TA.T60A..BHR.M.SAC','WINE.2015.097.00.46.21.0000.7A.WINE..BHR.M.SAC','WIRE.2015.097.00.46.21.0000.7A.WIRE..BHR.M.SAC','WLFT.2015.097.00.46.21.0000.7A.WLFT..BHR.M.SAC','WTMN.2015.097.00.46.21.0000.7A.WTMN..BHR.M.SAC','YLDA.2015.097.00.46.21.0000.7A.YLDA..BHR.M.SAC');

%read headers for epicentral distance
ACSOed = lh(ACSO,'GCARC');
ALMAed = lh(ALMA,'GCARC');
BARBed = lh(BARB,'GCARC');
BDEGed = lh(BDEG,'GCARC');
CABNed = lh(CABN,'GCARC');
INTXed = lh(INTX,'GCARC');
JSPRed = lh(JSPR,'GCARC');
LADYed = lh(LADY,'GCARC');
LBDLed = lh(LBDL,'GCARC');
MUSKed = lh(MUSK,'GCARC');
NAZFed = lh(NAZF,'GCARC');
P52Aed = lh(P52A,'GCARC');
PVGRed = lh(PVGR,'GCARC');
R56Aed = lh(R56A,'GCARC');
R57Aed = lh(R57A,'GCARC');
R58Aed = lh(R58A,'GCARC');
R58Bed = lh(R58B,'GCARC');
RTSNed = lh(RTSN,'GCARC');
S59Aed = lh(S59A,'GCARC');
SUSIed = lh(SUSI,'GCARC');
T60Aed = lh(T60A,'GCARC');
WINEed = lh(WINE,'GCARC');
WIREed = lh(WIRE,'GCARC');
WLFTed = lh(WLFT,'GCARC');
WTMNed = lh(WTMN,'GCARC');
YLDAed = lh(YLDA,'GCARC');

%read headers for sks arrival 
ACSOsks = lh(ACSO,'A');
ALMAsks = lh(ALMA,'A');
BARBsks = lh(BARB,'A');
BDEGsks = lh(BDEG,'A');
CABNsks = lh(CABN,'A');
INTXsks = lh(INTX,'A');
JSPRsks = lh(JSPR,'A');
LADYsks = lh(LADY,'A');
LBDLsks = lh(LBDL,'A');
MUSKsks = lh(MUSK,'A');
NAZFsks = lh(NAZF,'A');
P52Asks = lh(P52A,'A');
PVGRsks = lh(PVGR,'A');
R56Asks = lh(R56A,'A');
R57Asks = lh(R57A,'A');
R58Asks = lh(R58A,'A');
R58Bsks = lh(R58B,'A');
RTSNsks = lh(RTSN,'A');
S59Asks = lh(S59A,'A');
SUSIsks = lh(SUSI,'A');
T60Asks = lh(T60A,'A');
WINEsks = lh(WINE,'A');
WIREsks = lh(WIRE,'A');
WLFTsks = lh(WLFT,'A');
WTMNsks = lh(WTMN,'A');
YLDAsks = lh(YLDA,'A');

figure; hold on;
%axis([-20 40 99 105]);

%plot and align components
plot(ACSO(:,1)-ACSOsks,ACSOed+ACSO(:,2)*scale,'Color','r')
plot(ALMA(:,1)-ALMAsks,ALMAed+ALMA(:,2)*scale,'Color','b')
plot(BARB(:,1)-BARBsks,BARBed+BARB(:,2)*scale,'Color','g')
plot(BDEG(:,1)-BDEGsks,BDEGed+BDEG(:,2)*scale,'Color','k')
plot(CABN(:,1)-CABNsks,CABNed+CABN(:,2)*scale,'Color','k')
plot(INTX(:,1)-INTXsks,INTXed+INTX(:,2)*scale,'Color','k')
plot(JSPR(:,1)-JSPRsks,JSPRed+JSPR(:,2)*scale,'Color','k')
plot(LADY(:,1)-LADYsks,LADYed+LADY(:,2)*scale,'Color','k')
plot(LBDL(:,1)-LBDLsks,LBDLed+LBDL(:,2)*scale,'Color','k')
plot(MUSK(:,1)-MUSKsks,MUSKed+MUSK(:,2)*scale,'Color','k')
plot(NAZF(:,1)-NAZFsks,NAZFed+NAZF(:,2)*scale,'Color','k')
plot(P52A(:,1)-P52Asks,P52Aed+P52A(:,2)*scale,'Color','k')
plot(PVGR(:,1)-PVGRsks,PVGRed+PVGR(:,2)*scale,'Color','k')
plot(R56A(:,1)-R56Asks,R56Aed+R56A(:,2)*scale,'Color','k')
plot(R57A(:,1)-R57Asks,R57Aed+R57A(:,2)*scale,'Color','k')
plot(R58A(:,1)-R58Asks,R58Aed+R58A(:,2)*scale,'Color','k')
plot(R58B(:,1)-R58Bsks,R58Bed+R58B(:,2)*scale,'Color','k')
plot(RTSN(:,1)-RTSNsks,RTSNed+RTSN(:,2)*scale,'Color','k')
plot(S59A(:,1)-S59Asks,S59Aed+S59A(:,2)*scale,'Color','k')
plot(SUSI(:,1)-SUSIsks,SUSIed+SUSI(:,2)*scale,'Color','k')
plot(T60A(:,1)-T60Asks,T60Aed+T60A(:,2)*scale,'Color','k')
plot(WINE(:,1)-WINEsks,WINEed+WINE(:,2)*scale,'Color','k')
plot(WIRE(:,1)-WIREsks,WIREed+WIRE(:,2)*scale,'Color','k')
plot(WLFT(:,1)-WLFTsks,WLFTed+WLFT(:,2)*scale,'Color','k')
plot(WTMN(:,1)-WTMNsks,WTMNed+WTMN(:,2)*scale,'Color','k')
plot(YLDA(:,1)-YLDAsks,YLDAed+YLDA(:,2)*scale,'Color','k')