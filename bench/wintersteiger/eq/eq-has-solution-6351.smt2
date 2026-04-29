(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.35187061225988980339707268285565078258514404296875p907 {+ 1584684358256268 907 (1.46265e+273)}
; Y = 1.3535527649204490696632774415775202214717864990234375p370 {+ 1592260100351543 370 (3.25517e+111)}
; 1.35187061225988980339707268285565078258514404296875p907 = 1.3535527649204490696632774415775202214717864990234375p370 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110001010 #b0101101000010100001100010100010000010100011010001100)))
(assert (= y (fp #b0 #b10101110001 #b0101101010000010011011110001101010111110011000110111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
