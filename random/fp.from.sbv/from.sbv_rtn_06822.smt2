(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (= x #b00111101100010110111001110101001))
;; x should be 1032549289

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTN x)))
(assert (fp.eq r ((_ to_fp 11 53) #x41CEC5B9D4800000)))
(check-sat)
(exit)
