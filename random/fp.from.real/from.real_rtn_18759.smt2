(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b11100011011111000101010)))
;; x should be Float32(0x4A71BE2A [Rational(7921429, 2), 3960714.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 792142921.0 200.0))))
;; w should be Float32(0x4A71BE2A [Rational(7921429, 2), 3960714.500000])

(assert (= x w))
(check-sat)
(exit)
