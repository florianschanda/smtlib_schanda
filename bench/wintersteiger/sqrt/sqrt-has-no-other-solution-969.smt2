(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9220559753169090821955933279241435229778289794921875p348 {+ 4152570946851971 348 (1.10206e+105)}
; 1.9220559753169090821955933279241435229778289794921875p348 S == 1.386382333743801265057982163853012025356292724609375p174
; [HW: 1.386382333743801265057982163853012025356292724609375p174] 

; mpf : + 1740111334271126 174
; mpfd: + 1740111334271126 174 (3.31973e+052) class: Pos. norm. non-zero
; hwf : + 1740111334271126 174 (3.31973e+052) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101011011 #b1110110000001011110111000100001100010001010010000011)))
(assert (= r (fp #b0 #b10010101101 #b0110001011101001111100111101111100101110100010010110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
