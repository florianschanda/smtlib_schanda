(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9329947908512050691598460616660304367542266845703125p379 {- 4201834992416101 379 (-2.38012e+114)}
; Y = -1.5285415802608695035047503552050329744815826416015625p-170 {- 2380339663912665 -170 (-1.02136e-051)}
; -1.9329947908512050691598460616660304367542266845703125p379 % -1.5285415802608695035047503552050329744815826416015625p-170 == -1.03291421868226596103568226681090891361236572265625p-172
; [HW: -1.03291421868226596103568226681090891361236572265625p-172] 

; mpf : - 148232462992644 -172
; mpfd: - 148232462992644 -172 (-1.72546e-052) class: Neg. norm. non-zero
; hwf : - 148232462992644 -172 (-1.72546e-052) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101111010 #b1110111011011000101111110010001000001011010101100101)))
(assert (= y (fp #b1 #b01101010101 #b1000011101001110100000000100000111001011111011011001)))
(assert (= r (fp #b1 #b01101010011 #x086d10f4d0504)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
