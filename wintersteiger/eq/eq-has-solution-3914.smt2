(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3159031393186653158267063190578483045101165771484375p-662 {+ 1422701260520711 -662 (6.87649e-200)}
; Y = -1.140618429794919119757423686678521335124969482421875p-334 {- 633289108025822 -334 (-3.25928e-101)}
; 1.3159031393186653158267063190578483045101165771484375p-662 = -1.140618429794919119757423686678521335124969482421875p-334 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101101001 #b0101000011011111000001110011010000010011110100000111)))
(assert (= y (fp #b1 #b01010110001 #b0010001111111111100100011100010100101111000111011110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
