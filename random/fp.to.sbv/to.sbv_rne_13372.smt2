(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b10010101100001001001000)))
;; x should be Float32(0x494AC248 [Rational(1661001, 2), 830500.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be 830500

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000011001010110000100100))
;; z should be 830500

(assert (not (= y z)))
(check-sat)
(exit)
