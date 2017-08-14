(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b00101001011011011000100)))
;; x should be Float32(0xC994B6C4 [Rational(-2436529, 2), -1218264.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 4990012073.0 4096.0)))))
;; w should be Float32(0xC994B6C5 [Rational(-9746117, 8), -1218264.625000])

(assert (distinct x w))
(check-sat)
(exit)
