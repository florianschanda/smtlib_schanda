(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11100011100001100001101001010110))
;; x should be e3861a56

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xE3861A56 [Rational(-4947522820340126318592), -4947522820340126318592.000000])

(assert (not (= y (fp #b1 #b11000111 #b00001100001101001010110))))
(check-sat)
(exit)
