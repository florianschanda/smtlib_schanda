(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4ADCE367)))
;; x should be Float32(0x4ADCE367 [Rational(14476135, 2), 7238067.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNE x)))
;; y should be 7238068

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011011100111000110110100))
;; z should be 7238068

(assert (not (= y z)))
(check-sat)
(exit)
