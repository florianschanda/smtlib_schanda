(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAB915DA)))
;; x should be Float32(0xCAB915DA [Rational(-6064877), -6064877.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNE x)))
;; y should be -6064877

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101000110111010100010011))
;; z should be -6064877

(assert (not (= y z)))
(check-sat)
(exit)
