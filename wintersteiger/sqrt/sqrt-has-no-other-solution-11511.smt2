(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0277706213530282131074500284739769995212554931640625p-42 {+ 125067759977345 -42 (2.33688e-013)}
; 1.0277706213530282131074500284739769995212554931640625p-42 S == 1.0137902255166146847642494321917183697223663330078125p-21
; [HW: 1.0137902255166146847642494321917183697223663330078125p-21] 

; mpf : + 62105654497981 -21
; mpfd: + 62105654497981 -21 (4.83413e-007) class: Pos. norm. non-zero
; hwf : + 62105654497981 -21 (4.83413e-007) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111010101 #b0000011100011011111110011011011010000000001110000001)))
(assert (= r (fp #b0 #b01111101010 #b0000001110000111110000011001011110011001001010111101)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
