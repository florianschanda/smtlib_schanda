(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x492036D8)))
;; x should be Float32(0x492036D8 [Rational(1312475, 2), 656237.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 5249901.0 8.0))))
;; w should be Float32(0x492036DA [Rational(5249901, 8), 656237.625000])

(assert (distinct x w))
(check-sat)
(exit)
