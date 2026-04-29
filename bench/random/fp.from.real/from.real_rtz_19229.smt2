(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00110010100100110001101)))
;; x should be Float32(0x4A99498D [Rational(10045837, 2), 5022918.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ 5022921.0)))
;; w should be Float32(0x4A994992 [Rational(5022921), 5022921.000000])

(assert (distinct x w))
(check-sat)
(exit)
