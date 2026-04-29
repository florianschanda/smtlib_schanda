(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.51976130100438044934207937330938875675201416015625p-440 {+ 2340796801524932 -440 (5.35275e-133)}
; 1.51976130100438044934207937330938875675201416015625p-440 | == 1.51976130100438044934207937330938875675201416015625p-440
; [HW: 1.51976130100438044934207937330938875675201416015625p-440] 

; mpf : + 2340796801524932 -440
; mpfd: + 2340796801524932 -440 (5.35275e-133) class: Pos. norm. non-zero
; hwf : + 2340796801524932 -440 (5.35275e-133) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001000111 #b1000010100001111000100111001110110001010010011000100)))
(assert (= r (fp #b0 #b01001000111 #b1000010100001111000100111001110110001010010011000100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
