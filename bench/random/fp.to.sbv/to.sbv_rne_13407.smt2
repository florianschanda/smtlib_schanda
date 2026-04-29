(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b00101100000110110011000)))
;; x should be Float32(0x4A160D98 [Rational(2458470), 2458470.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNE x)))
;; y should be 2458470

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001001011000001101100110))
;; z should be 2458470

(assert (not (= y z)))
(check-sat)
(exit)
