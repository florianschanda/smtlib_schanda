(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x6B09340C)))
;; x should be Float32(0x6B09340C [Rational(165868621705242303000477696), 165868621705242303000477696.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b10010100011000011111000)))
;; y should be Float32(0x804A30F8 [Rational(-607775, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const result Float32)
(assert (= result (fp.add RTP x y)))
(assert (not (= result ((_ to_fp 8 24) #x6B09340C))))
(check-sat)
(exit)
