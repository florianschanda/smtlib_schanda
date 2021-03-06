(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4ADA18EF)))
;; x should be Float32(0x4ADA18EF [Rational(14293231, 2), 7146615.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 62782833.0 128.0))))
;; w should be Float32(0x48EF7F5C [Rational(3923927, 8), 490490.875000])

(assert (distinct x w))
(check-sat)
(exit)
