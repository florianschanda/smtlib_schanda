(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b01101101 #b10010111000100011000100)))
;; x should be Float32(0x36CB88C4 [Rational(3334705, 549755813888), 0.000006])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00000000000000000000001)))
;; y should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.div RTP x y)))
(assert (not (= result ((_ to_fp 8 24) #x7F800000))))
(check-sat)
(exit)
