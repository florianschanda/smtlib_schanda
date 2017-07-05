(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8943126633046183382447225085343234241008758544921875p27 {+ 4027626177211395 27 (2.5425e+008)}
; 1.8943126633046183382447225085343234241008758544921875p27 S == 1.9464391402274145992379317249287851154804229736328125p13
; [HW: 1.9464391402274145992379317249287851154804229736328125p13] 

; mpf : + 4262382959257037 13
; mpfd: + 4262382959257037 13 (15945.2) class: Pos. norm. non-zero
; hwf : + 4262382959257037 13 (15945.2) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000011010 #b1110010011110001101011001011100101001010110000000011)))
(assert (= r (fp #b0 #b10000001100 #b1111001001001001110101011110001011101110010111001101)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
