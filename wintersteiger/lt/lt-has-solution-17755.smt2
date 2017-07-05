(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.929432398675020809974967050948180258274078369140625p-166 {+ 4185791404338890 -166 (2.06277e-050)}
; Y = -1.041119328503036900457345836912281811237335205078125p-435 {- 185184992524002 -435 (-1.17342e-131)}
; 1.929432398675020809974967050948180258274078369140625p-166 < -1.041119328503036900457345836912281811237335205078125p-435 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101011001 #b1110110111101111010010000001110000100110111011001010)))
(assert (= y (fp #b1 #b01001001100 #b0000101010000110110010111101101100100111011011100010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
