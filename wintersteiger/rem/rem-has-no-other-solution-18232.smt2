(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.452080698621981635909605756751261651515960693359375p496 {+ 2035990465855350 496 (2.97077e+149)}
; Y = 1.6960136392739293409448464444722048938274383544921875p5 {+ 3134566766478851 5 (54.2724)}
; 1.452080698621981635909605756751261651515960693359375p496 % 1.6960136392739293409448464444722048938274383544921875p5 == 1.5917940575520059809377926285378634929656982421875p3
; [HW: 1.5917940575520059809377926285378634929656982421875p3] 

; mpf : + 2665203497071288 3
; mpfd: + 2665203497071288 3 (12.7344) class: Pos. norm. non-zero
; hwf : + 2665203497071288 3 (12.7344) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101111 #b0111001110111011100011111000011110111011111101110110)))
(assert (= y (fp #b0 #b10000000100 #b1011001000101101111100110010101001000000011000000011)))
(assert (= r (fp #b0 #b10000000010 #x977fd0bb272b8)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
