(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49B30D1C)))
;; x should be Float32(0x49B30D1C [Rational(2933575, 2), 1466787.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 31590447827.0 65536.0))))
;; w should be Float32(0x48EB5DFF [Rational(15425023, 32), 482031.968750])

(assert (distinct x w))
(check-sat)
(exit)
