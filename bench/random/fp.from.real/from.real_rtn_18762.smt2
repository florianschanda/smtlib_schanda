(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A71BE2A)))
;; x should be Float32(0x4A71BE2A [Rational(7921429, 2), 3960714.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 14527009.0 8.0))))
;; w should be Float32(0x49DDAA21 [Rational(14527009, 8), 1815876.125000])

(assert (distinct x w))
(check-sat)
(exit)
