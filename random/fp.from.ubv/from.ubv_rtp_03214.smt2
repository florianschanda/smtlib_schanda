(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b0101101001001000111101010110110001011111001010100010000000100001))
;; x should be 6505719507538550817

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x5EB491EB))))
(check-sat)
(exit)
