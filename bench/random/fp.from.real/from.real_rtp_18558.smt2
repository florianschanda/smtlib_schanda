(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x807FFFFF)))
;; x should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 15779.0 850705917302346158658436518579420528640000.0)))))
;; w should be Float32(0x80C9F8A0 [Rational(-413637, 22300745198530623141535718272648361505980416), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
