(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8519381500266789419839597030659206211566925048828125p-392 {+ 3836788335002861 -392 (1.83598e-118)}
; Y = -1.997274452508271291861774443532340228557586669921875p-690 {- 4491324852702366 -690 (-3.88813e-208)}
; 1.8519381500266789419839597030659206211566925048828125p-392 = -1.997274452508271291861774443532340228557586669921875p-690 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001110111 #b1101101000011000100111100101110010010100010011101101)))
(assert (= y (fp #b1 #b00101001101 #b1111111101001101011000001110011010101000110010011110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
