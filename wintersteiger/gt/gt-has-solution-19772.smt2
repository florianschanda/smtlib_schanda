(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1984094771443032367841396990115754306316375732421875p691 {+ 893556847333859 691 (1.23121e+208)}
; Y = -1.466615955015725614174471047590486705303192138671875p815 {- 2101451441133950 815 (-3.20452e+245)}
; 1.1984094771443032367841396990115754306316375732421875p691 > -1.466615955015725614174471047590486705303192138671875p815 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010110010 #b0011001011001010111101101010011110001101000111100011)))
(assert (= y (fp #b1 #b11100101110 #b0111011101110100001001001010101010010101100101111110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
