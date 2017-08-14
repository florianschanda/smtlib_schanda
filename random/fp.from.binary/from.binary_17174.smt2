(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -normal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b1 #b01110011 #b11011001010001010110010)))
;; x should be Float32(0xB9ECA2B2 [Rational(-7754073, 17179869184), -0.000451])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b10111001111011001010001010110010

(assert (not (= y #b10111001111011001010001010110010)))
(check-sat)
(exit)
