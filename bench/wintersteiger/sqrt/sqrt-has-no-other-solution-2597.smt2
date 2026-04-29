(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8727340109977179682942960425862111151218414306640625p-824 {+ 3930444566722881 -824 (1.67402e-248)}
; 1.8727340109977179682942960425862111151218414306640625p-824 S == 1.3684787214267226662656184998922981321811676025390625p-412
; [HW: 1.3684787214267226662656184998922981321811676025390625p-412] 

; mpf : + 1659480632511345 -412
; mpfd: + 1659480632511345 -412 (1.29384e-124) class: Pos. norm. non-zero
; hwf : + 1659480632511345 -412 (1.29384e-124) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011000111 #b1101111101101011011111110000001101010111100101000001)))
(assert (= r (fp #b0 #b01001100011 #b0101111001010100100111110001100111001100101101110001)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
