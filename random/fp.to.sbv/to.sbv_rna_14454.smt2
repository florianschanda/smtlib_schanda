(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAB61C5C)))
;; x should be Float32(0xCAB61C5C [Rational(-5967406), -5967406.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be -5967406

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101001001111000111010010))
;; z should be -5967406

(assert (not (= y z)))
(check-sat)
(exit)
