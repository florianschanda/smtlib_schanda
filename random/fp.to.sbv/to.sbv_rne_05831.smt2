(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCACA382D)))
;; x should be Float32(0xCACA382D [Rational(-13252653, 2), -6626326.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be -6626326

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111100110101110001111101010))
;; z should be -6626326

(assert (not (= y z)))
(check-sat)
(exit)
