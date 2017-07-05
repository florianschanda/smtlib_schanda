(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5590755970222074378028764840564690530300140380859375p618 {- 2517852650421151 618 (-1.69592e+186)}
; Y = -1.1214828102840161960784826078452169895172119140625p358 {- 547109939127016 358 (-6.58463e+107)}
; -1.5590755970222074378028764840564690530300140380859375p618 + -1.1214828102840161960784826078452169895172119140625p358 == -1.5590755970222074378028764840564690530300140380859375p618
; [HW: -1.5590755970222074378028764840564690530300140380859375p618] 

; mpf : - 2517852650421151 618
; mpfd: - 2517852650421151 618 (-1.69592e+186) class: Neg. norm. non-zero
; hwf : - 2517852650421151 618 (-1.69592e+186) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001101001 #b1000111100011111100101000000110100110011101110011111)))
(assert (= y (fp #b1 #b10101100101 #b0001111100011001011111110101100100110010001011101000)))
(assert (= r (fp #b1 #b11001101001 #b1000111100011111100101000000110100110011101110011111)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)
