(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49C968B4)))
;; x should be Float32(0x49C968B4 [Rational(3299885, 2), 1649942.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCABBE7E9)))
;; y should be Float32(0xCABBE7E9 [Rational(-12314601, 2), -6157300.500000])

(declare-const result Float32)
(assert (= result (fp.sub RNE x y)))
(assert (= result ((_ to_fp 8 24) #x4AEE4216)))
(check-sat)
(exit)
