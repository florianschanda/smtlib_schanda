(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -normal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b1 #b11001100 #b00100001001101011001100)))
;; x should be Float32(0xE6109ACC [Rational(-170719067967440979755008), -170719067967440979755008.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b11100110000100001001101011001100

(assert (not (= y #b11100110000100001001101011001100)))
(check-sat)
(exit)
