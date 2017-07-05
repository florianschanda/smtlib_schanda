(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.623264434991576354860853825812228024005889892578125p48 {+ 2806933477181346 48 (4.56908e+014)}
; Y = -1.689602041986321356858979925164021551609039306640625p57 {- 3105691499323530 57 (-2.43497e+017)}
; 1.623264434991576354860853825812228024005889892578125p48 * -1.689602041986321356858979925164021551609039306640625p57 == -1.3713354520227698518652914572157897055149078369140625p106
; [HW: -1.3713354520227698518652914572157897055149078369140625p106] 

; mpf : - 1672346203359201 106
; mpfd: - 1672346203359201 106 (-1.11256e+032) class: Neg. norm. non-zero
; hwf : - 1672346203359201 106 (-1.11256e+032) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000101111 #b1001111110001110010000100000110100001100011110100010)))
(assert (= y (fp #b1 #b10000111000 #b1011000010001001110000100110100110010110000010001010)))
(assert (= r (fp #b1 #b10001101001 #b0101111100001111110101110001011001001000011111100001)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
