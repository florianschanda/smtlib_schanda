(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.80123522555076487350333991344086825847625732421875 291 {+ 3608442663226540 291 (7.16637e+087)}
; 1.80123522555076487350333991344086825847625732421875 291 I == 1.80123522555076487350333991344086825847625732421875 291
; [HW: 1.80123522555076487350333991344086825847625732421875 291] 

; mpf : + 3608442663226540 291
; mpfd: + 3608442663226540 291 (7.16637e+087) class: Pos. norm. non-zero
; hwf : + 3608442663226540 291 (7.16637e+087) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100100010 #b1100110100011101110000000111001000100100110010101100)))
(assert (= r (fp #b0 #b10100100010 #b1100110100011101110000000111001000100100110010101100)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
