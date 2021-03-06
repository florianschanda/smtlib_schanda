(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80110EAB)))
;; x should be Float32(0x80110EAB [Rational(-1117867, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010100 #b00111110100100001111010)))
;; y should be Float32(0x4A1F487A [Rational(5219389, 2), 2609694.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x8047138C)))
;; z should be Float32(0x8047138C [Rational(-1164515, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result ((_ to_fp 8 24) #x89A9CF19)))
(check-sat)
(exit)
