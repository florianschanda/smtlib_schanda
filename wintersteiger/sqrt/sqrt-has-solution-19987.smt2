(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8092263289687784411086113323108293116092681884765625p-743 {+ 3644431393602185 -743 (3.91026e-224)}
; 1.8092263289687784411086113323108293116092681884765625p-743 S == 1.902223083115531121478625209419988095760345458984375p-372
; [HW: 1.902223083115531121478625209419988095760345458984375p-372] 

; mpf : + 4063251540924166 -372
; mpfd: + 4063251540924166 -372 (1.97744e-112) class: Pos. norm. non-zero
; hwf : + 4063251540924166 -372 (1.97744e-112) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100011000 #b1100111100101001011101001110100111111011101010001001)))
(assert (= r (fp #b0 #b01010001011 #b1110011011111000000101111000101110101101011100000110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
