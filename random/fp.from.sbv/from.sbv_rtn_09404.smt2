(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b11001111001111110111011110011001010111111100110001000011000010011111101100101010100010110010011111101101110111111010110011110100))
;; x should be -64802631333073471017562377283606434572

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTN x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #xC7C86044335019DF))))
(check-sat)
(exit)
