(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x005080DC)))
;; x should be Float32(0x005080DC [Rational(1318967, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 5882789668536685772562779042189398866020800839601911.0 795717178255658627448611597034913344160729841275756347904742363029055195220053400852889600.0))))
;; w should be Float32(0x005080DC [Rational(1318967, 178405961588244985132285746181186892047843328), 0.000000])

(assert (= x w))
(check-sat)
(exit)
