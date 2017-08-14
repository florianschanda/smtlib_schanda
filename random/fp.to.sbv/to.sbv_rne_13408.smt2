(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A160D9A)))
;; x should be Float32(0x4A160D9A [Rational(4916941, 2), 2458470.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be 2458470

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001001011000001101100110))
;; z should be 2458470

(assert (not (= y z)))
(check-sat)
(exit)
