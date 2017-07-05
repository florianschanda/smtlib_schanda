(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4942014457256529436079972583684138953685760498046875p774 {- 2225685446816011 774 (-1.48466e+233)}
; Y = -1.3895499233563881613662260861019603908061981201171875p488 {- 1754376889670035 488 (-1.11048e+147)}
; -1.4942014457256529436079972583684138953685760498046875p774 < -1.3895499233563881613662260861019603908061981201171875p488 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100000101 #b0111111010000011111111000110011100000111000100001011)))
(assert (= y (fp #b1 #b10111100111 #b0110001110111001100010110011010011111001100110010011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
