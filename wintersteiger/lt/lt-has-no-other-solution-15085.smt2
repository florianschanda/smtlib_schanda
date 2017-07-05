(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7933414979538706557349314607563428580760955810546875p577 {+ 3572892474562603 577 (8.87096e+173)}
; Y = -0.3930882222434035622171677459846250712871551513671875p-1022 {- 1770311971219123 -1023 (-8.7465e-309)}
; 1.7933414979538706557349314607563428580760955810546875p577 < -0.3930882222434035622171677459846250712871551513671875p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001000000 #b1100101100011000011011011010110001000101100000101011)))
(assert (= y (fp #b1 #b00000000000 #b0110010010100001011011100000001011111010011010110011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
