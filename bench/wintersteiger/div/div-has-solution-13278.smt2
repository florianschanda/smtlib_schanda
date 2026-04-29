(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2495011142657708180792042185203172266483306884765625p-1011 {- 1123653125235849 -1011 (-5.69392e-305)}
; Y = 1.196702104299553592881011354620568454265594482421875p287 {+ 885867523626462 287 (2.97574e+086)}
; -1.2495011142657708180792042185203172266483306884765625p-1011 / 1.196702104299553592881011354620568454265594482421875p287 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000001100 #b0011111111011111010011100001011000010110010010001001)))
(assert (= y (fp #b0 #b10100011110 #b0011001001011011000100011011000100000101010111011110)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
