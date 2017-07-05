(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9992369836247687597818867288879118859767913818359375p-102 {- 4500163307107327 -102 (-3.9428e-031)}
; Y = -1.13223882650655571779907404561527073383331298828125p-21 {- 595550729778836 -21 (-5.39894e-007)}
; -1.9992369836247687597818867288879118859767913818359375p-102 % -1.13223882650655571779907404561527073383331298828125p-21 == -1.9992369836247687597818867288879118859767913818359375p-102
; [HW: -1.9992369836247687597818867288879118859767913818359375p-102] 

; mpf : - 4500163307107327 -102
; mpfd: - 4500163307107327 -102 (-3.9428e-031) class: Neg. norm. non-zero
; hwf : - 4500163307107327 -102 (-3.9428e-031) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110011001 #b1111111111001101111111101011010110011111001111111111)))
(assert (= y (fp #b1 #b01111101010 #b0010000111011010011001110101101100011011011010010100)))
(assert (= r (fp #b1 #b01110011001 #xffcdfeb59f3ff)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
