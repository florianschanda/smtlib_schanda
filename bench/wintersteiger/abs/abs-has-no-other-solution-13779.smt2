(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4699149680507683779495664566638879477977752685546875p519 {+ 2116308875009259 519 (2.52267e+156)}
; 1.4699149680507683779495664566638879477977752685546875p519 | == 1.4699149680507683779495664566638879477977752685546875p519
; [HW: 1.4699149680507683779495664566638879477977752685546875p519] 

; mpf : + 2116308875009259 519
; mpfd: + 2116308875009259 519 (2.52267e+156) class: Pos. norm. non-zero
; hwf : + 2116308875009259 519 (2.52267e+156) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000000110 #b0111100001001100010110001110101110101101110011101011)))
(assert (= r (fp #b0 #b11000000110 #b0111100001001100010110001110101110101101110011101011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
