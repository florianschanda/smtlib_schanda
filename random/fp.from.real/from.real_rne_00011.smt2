(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49B30D1C)))
;; x should be Float32(0x49B30D1C [Rational(2933575, 2), 1466787.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 96127393081.0 65536.0))))
;; w should be Float32(0x49B30D1D [Rational(11734301, 8), 1466787.625000])

(assert (distinct x w))
(check-sat)
(exit)
