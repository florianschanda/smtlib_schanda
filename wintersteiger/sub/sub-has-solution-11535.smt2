(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.172861861767473978801490375190041959285736083984375p1012 {+ 778500616242566 1012 (5.14757e+304)}
; Y = 1.1956224631973235705828528807614929974079132080078125p82 {+ 881005252360765 82 (5.78168e+024)}
; 1.172861861767473978801490375190041959285736083984375p1012 - 1.1956224631973235705828528807614929974079132080078125p82 == 1.172861861767473978801490375190041959285736083984375p1012
; [HW: 1.172861861767473978801490375190041959285736083984375p1012] 

; mpf : + 778500616242566 1012
; mpfd: + 778500616242566 1012 (5.14757e+304) class: Pos. norm. non-zero
; hwf : + 778500616242566 1012 (5.14757e+304) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111110011 #b0010110001000000101011001100101100000100010110000110)))
(assert (= y (fp #b0 #b10001010001 #b0011001000010100010100000101000111001011101000111101)))
(assert (= r (fp #b0 #b11111110011 #b0010110001000000101011001100101100000100010110000110)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
