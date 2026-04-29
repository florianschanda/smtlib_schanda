(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +halfpoint)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b10101000100000100101110)))
;; x should be Float32(0x4A54412E [Rational(6955159, 2), 3477579.500000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b01001010010101000100000100101110

(assert (not (= y #b01001010010101000100000100101110)))
(check-sat)
(exit)
