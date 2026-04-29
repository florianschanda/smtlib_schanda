(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.81863394397416033854142369818873703479766845703125p225 {+ 3686799525034868 225 (9.80605e+067)}
; 1.81863394397416033854142369818873703479766845703125p225 S == 1.9071622605190992061352517339400947093963623046875p112
; [HW: 1.9071622605190992061352517339400947093963623046875p112] 

; mpf : + 4085495618438392 112
; mpfd: + 4085495618438392 112 (9.90255e+033) class: Pos. norm. non-zero
; hwf : + 4085495618438392 112 (9.90255e+033) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011100000 #b1101000110010001111111101000000011000011101101110100)))
(assert (= r (fp #b0 #b10001101111 #b1110100000111011110010010011000100011000010011111000)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
