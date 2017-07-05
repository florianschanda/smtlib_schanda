(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.58568981964572230936028063297271728515625p474 {+ 2637712453511168 474 (7.73457e+142)}
; Y = 1.9941097012562460921714091455214656889438629150390625p391 {+ 4477072080143025 391 (1.00572e+118)}
; Z = -1.6112651366920422990602901336387731134891510009765625p149 {- 2752893441830857 149 (-1.14984e+045)}
; 1.58568981964572230936028063297271728515625p474 x 1.9941097012562460921714091455214656889438629150390625p391 -1.6112651366920422990602901336387731134891510009765625p149 == 1.581019726269401015628091045073233544826507568359375p866
; [HW: 1.581019726269401015628091045073233544826507568359375p866] 

; mpf : + 2616680222721782 866
; mpfd: + 2616680222721782 866 (7.77882e+260) class: Pos. norm. non-zero
; hwf : + 2616680222721782 866 (7.77882e+260) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111011001 #b1001010111101111110001001001110011111010100000000000)))
(assert (= y (fp #b0 #b10110000110 #b1111111001111101111110010010111110001000001010110001)))
(assert (= z (fp #b1 #b10010010100 #b1001110001111011110111110011101101000110111111001001)))
(assert (= r (fp #b0 #b11101100001 #b1001010010111101101101010111001010101000011011110110)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
