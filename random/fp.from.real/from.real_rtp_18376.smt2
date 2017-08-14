(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x26ED90BA)))
;; x should be Float32(0x26ED90BA [Rational(7784541, 4722366482869645213696), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 1818245877.0 1888946593147858085478400.0)))))
;; w should be Float32(0xA68AB89D [Rational(-9091229, 9444732965739290427392), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
