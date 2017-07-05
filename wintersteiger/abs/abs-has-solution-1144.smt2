(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2313800534029988309470127205713652074337005615234375p618 {+ 1042043122286711 618 (1.33946e+186)}
; 1.2313800534029988309470127205713652074337005615234375p618 | == 1.2313800534029988309470127205713652074337005615234375p618
; [HW: 1.2313800534029988309470127205713652074337005615234375p618] 

; mpf : + 1042043122286711 618
; mpfd: + 1042043122286711 618 (1.33946e+186) class: Pos. norm. non-zero
; hwf : + 1042043122286711 618 (1.33946e+186) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001101001 #b0011101100111011101110010010001001010000000001110111)))
(assert (= r (fp #b0 #b11001101001 #b0011101100111011101110010010001001010000000001110111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
