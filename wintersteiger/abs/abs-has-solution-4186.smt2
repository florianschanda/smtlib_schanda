(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.595242265396015657330508474842645227909088134765625p1021 {- 2680732844632666 1021 (-3.5847e+307)}
; -1.595242265396015657330508474842645227909088134765625p1021 | == 1.595242265396015657330508474842645227909088134765625p1021
; [HW: 1.595242265396015657330508474842645227909088134765625p1021] 

; mpf : + 2680732844632666 1021
; mpfd: + 2680732844632666 1021 (3.5847e+307) class: Pos. norm. non-zero
; hwf : + 2680732844632666 1021 (3.5847e+307) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111111100 #b1001100001100001110011000000111100010010101001011010)))
(assert (= r (fp #b0 #b11111111100 #b1001100001100001110011000000111100010010101001011010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
