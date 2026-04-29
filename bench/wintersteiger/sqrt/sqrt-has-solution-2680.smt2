(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.547263027323700246284943204955197870731353759765625p576 {+ 2464653565928666 576 (3.82685e+173)}
; 1.547263027323700246284943204955197870731353759765625p576 S == 1.2438902794554269615190378317493014037609100341796875p288
; [HW: 1.2438902794554269615190378317493014037609100341796875p288] 

; mpf : + 1098384171674747 288
; mpfd: + 1098384171674747 288 (6.18616e+086) class: Pos. norm. non-zero
; hwf : + 1098384171674747 288 (6.18616e+086) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000111111 #b1000110000011001011011100000010010101010010011011010)))
(assert (= r (fp #b0 #b10100011111 #b0011111001101111100101111110011000010010110001111011)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
