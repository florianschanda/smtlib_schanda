(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.493930059075513128163947840221226215362548828125p-793 {- 2224463229999568 -793 (-2.86777e-239)}
; Y = 1.372916385156457419469688829849474132061004638671875p870 {+ 1679466093230974 870 (1.08079e+262)}
; -1.493930059075513128163947840221226215362548828125p-793 % 1.372916385156457419469688829849474132061004638671875p870 == -1.493930059075513128163947840221226215362548828125p-793
; [HW: -1.493930059075513128163947840221226215362548828125p-793] 

; mpf : - 2224463229999568 -793
; mpfd: - 2224463229999568 -793 (-2.86777e-239) class: Neg. norm. non-zero
; hwf : - 2224463229999568 -793 (-2.86777e-239) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011100110 #b0111111001110010001100110100101000111101100111010000)))
(assert (= y (fp #b0 #b11101100101 #b0101111101110111011100101011111001100011101101111110)))
(assert (= r (fp #b1 #b00011100110 #x7e72334a3d9d0)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
