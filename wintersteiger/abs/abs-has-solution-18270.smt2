(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8535780529149832318580592982470989227294921875p-202 {- 3844173801039552 -202 (-2.88371e-061)}
; -1.8535780529149832318580592982470989227294921875p-202 | == 1.8535780529149832318580592982470989227294921875p-202
; [HW: 1.8535780529149832318580592982470989227294921875p-202] 

; mpf : + 3844173801039552 -202
; mpfd: + 3844173801039552 -202 (2.88371e-061) class: Pos. norm. non-zero
; hwf : + 3844173801039552 -202 (2.88371e-061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100110101 #b1101101010000100000101110101110111011010011011000000)))
(assert (= r (fp #b0 #b01100110101 #b1101101010000100000101110101110111011010011011000000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
